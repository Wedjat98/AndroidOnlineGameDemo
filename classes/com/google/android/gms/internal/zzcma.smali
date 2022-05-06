.class public final Lcom/google/android/gms/internal/zzcma;
.super Lcom/google/android/gms/internal/zzfjm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzfjm",
        "<",
        "Lcom/google/android/gms/internal/zzcma;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzjlc:[Lcom/google/android/gms/internal/zzcma;


# instance fields
.field public zzjjs:Ljava/lang/Integer;

.field public zzjld:Lcom/google/android/gms/internal/zzcmf;

.field public zzjle:Lcom/google/android/gms/internal/zzcmf;

.field public zzjlf:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfjm;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjjs:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjld:Lcom/google/android/gms/internal/zzcmf;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjle:Lcom/google/android/gms/internal/zzcmf;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjlf:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzcma;->zzpfd:I

    return-void
.end method

.method public static zzbbg()[Lcom/google/android/gms/internal/zzcma;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzcma;->zzjlc:[Lcom/google/android/gms/internal/zzcma;

    if-nez v0, :cond_11

    sget-object v1, Lcom/google/android/gms/internal/zzfjq;->zzpnk:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/zzcma;->zzjlc:[Lcom/google/android/gms/internal/zzcma;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzcma;

    sput-object v0, Lcom/google/android/gms/internal/zzcma;->zzjlc:[Lcom/google/android/gms/internal/zzcma;

    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/zzcma;->zzjlc:[Lcom/google/android/gms/internal/zzcma;

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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzcma;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/zzcma;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcma;->zzjjs:Ljava/lang/Integer;

    if-nez v2, :cond_17

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcma;->zzjjs:Ljava/lang/Integer;

    if-eqz v2, :cond_23

    move v0, v1

    goto :goto_4

    :cond_17
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcma;->zzjjs:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcma;->zzjjs:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    move v0, v1

    goto :goto_4

    :cond_23
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcma;->zzjld:Lcom/google/android/gms/internal/zzcmf;

    if-nez v2, :cond_2d

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcma;->zzjld:Lcom/google/android/gms/internal/zzcmf;

    if-eqz v2, :cond_39

    move v0, v1

    goto :goto_4

    :cond_2d
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcma;->zzjld:Lcom/google/android/gms/internal/zzcmf;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcma;->zzjld:Lcom/google/android/gms/internal/zzcmf;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcmf;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    move v0, v1

    goto :goto_4

    :cond_39
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcma;->zzjle:Lcom/google/android/gms/internal/zzcmf;

    if-nez v2, :cond_43

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcma;->zzjle:Lcom/google/android/gms/internal/zzcmf;

    if-eqz v2, :cond_4f

    move v0, v1

    goto :goto_4

    :cond_43
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcma;->zzjle:Lcom/google/android/gms/internal/zzcmf;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcma;->zzjle:Lcom/google/android/gms/internal/zzcmf;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcmf;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    move v0, v1

    goto :goto_4

    :cond_4f
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcma;->zzjlf:Ljava/lang/Boolean;

    if-nez v2, :cond_59

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcma;->zzjlf:Ljava/lang/Boolean;

    if-eqz v2, :cond_65

    move v0, v1

    goto :goto_4

    :cond_59
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcma;->zzjlf:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcma;->zzjlf:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    move v0, v1

    goto :goto_4

    :cond_65
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcma;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    if-eqz v2, :cond_71

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcma;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfjo;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7f

    :cond_71
    iget-object v2, p1, Lcom/google/android/gms/internal/zzcma;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcma;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfjo;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_7f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcma;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

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

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjjs:Ljava/lang/Integer;

    if-nez v0, :cond_3f

    move v0, v1

    :goto_16
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcma;->zzjld:Lcom/google/android/gms/internal/zzcmf;

    mul-int/lit8 v3, v0, 0x1f

    if-nez v2, :cond_46

    move v0, v1

    :goto_1e
    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcma;->zzjle:Lcom/google/android/gms/internal/zzcmf;

    mul-int/lit8 v3, v0, 0x1f

    if-nez v2, :cond_4b

    move v0, v1

    :goto_26
    add-int/2addr v0, v3

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjlf:Ljava/lang/Boolean;

    if-nez v0, :cond_50

    move v0, v1

    :goto_2e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcma;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcma;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfjo;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_57

    :cond_3d
    :goto_3d
    add-int/2addr v0, v1

    return v0

    :cond_3f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjjs:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_16

    :cond_46
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcmf;->hashCode()I

    move-result v0

    goto :goto_1e

    :cond_4b
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcmf;->hashCode()I

    move-result v0

    goto :goto_26

    :cond_50
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjlf:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_2e

    :cond_57
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcma;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

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

    sparse-switch v0, :sswitch_data_46

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzfjm;->zza(Lcom/google/android/gms/internal/zzfjj;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->zzcwi()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjjs:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_19
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjld:Lcom/google/android/gms/internal/zzcmf;

    if-nez v0, :cond_24

    new-instance v0, Lcom/google/android/gms/internal/zzcmf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcmf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjld:Lcom/google/android/gms/internal/zzcmf;

    :cond_24
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjld:Lcom/google/android/gms/internal/zzcmf;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzfjj;->zza(Lcom/google/android/gms/internal/zzfjs;)V

    goto :goto_0

    :sswitch_2a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjle:Lcom/google/android/gms/internal/zzcmf;

    if-nez v0, :cond_35

    new-instance v0, Lcom/google/android/gms/internal/zzcmf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcmf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjle:Lcom/google/android/gms/internal/zzcmf;

    :cond_35
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjle:Lcom/google/android/gms/internal/zzcmf;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzfjj;->zza(Lcom/google/android/gms/internal/zzfjs;)V

    goto :goto_0

    :sswitch_3b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->zzcvz()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjlf:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_data_46
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_19
        0x1a -> :sswitch_2a
        0x20 -> :sswitch_3b
    .end sparse-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/zzfjk;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjjs:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcma;->zzjjs:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfjk;->zzaa(II)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjld:Lcom/google/android/gms/internal/zzcmf;

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcma;->zzjld:Lcom/google/android/gms/internal/zzcmf;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfjk;->zza(ILcom/google/android/gms/internal/zzfjs;)V

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjle:Lcom/google/android/gms/internal/zzcmf;

    if-eqz v0, :cond_22

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcma;->zzjle:Lcom/google/android/gms/internal/zzcmf;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfjk;->zza(ILcom/google/android/gms/internal/zzfjs;)V

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcma;->zzjlf:Ljava/lang/Boolean;

    if-eqz v0, :cond_30

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcma;->zzjlf:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfjk;->zzl(IZ)V

    :cond_30
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzfjm;->zza(Lcom/google/android/gms/internal/zzfjk;)V

    return-void
.end method

.method protected final zzq()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzfjm;->zzq()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcma;->zzjjs:Ljava/lang/Integer;

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcma;->zzjjs:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzfjk;->zzad(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcma;->zzjld:Lcom/google/android/gms/internal/zzcmf;

    if-eqz v1, :cond_20

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcma;->zzjld:Lcom/google/android/gms/internal/zzcmf;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzfjk;->zzb(ILcom/google/android/gms/internal/zzfjs;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcma;->zzjle:Lcom/google/android/gms/internal/zzcmf;

    if-eqz v1, :cond_2c

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcma;->zzjle:Lcom/google/android/gms/internal/zzcmf;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzfjk;->zzb(ILcom/google/android/gms/internal/zzfjs;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcma;->zzjlf:Ljava/lang/Boolean;

    if-eqz v1, :cond_3d

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcma;->zzjlf:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/android/gms/internal/zzfjk;->zzlg(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_3d
    return v0
.end method
