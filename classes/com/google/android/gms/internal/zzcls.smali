.class public final Lcom/google/android/gms/internal/zzcls;
.super Lcom/google/android/gms/internal/zzfjm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzfjm",
        "<",
        "Lcom/google/android/gms/internal/zzcls;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzjjv:[Lcom/google/android/gms/internal/zzcls;


# instance fields
.field public zzjjw:Ljava/lang/Integer;

.field public zzjjx:Ljava/lang/String;

.field public zzjjy:[Lcom/google/android/gms/internal/zzclt;

.field private zzjjz:Ljava/lang/Boolean;

.field public zzjka:Lcom/google/android/gms/internal/zzclu;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfjm;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcls;->zzjjw:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcls;->zzjjx:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/zzclt;->zzbbc()[Lcom/google/android/gms/internal/zzclt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcls;->zzjjy:[Lcom/google/android/gms/internal/zzclt;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcls;->zzjjz:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcls;->zzjka:Lcom/google/android/gms/internal/zzclu;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcls;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzcls;->zzpfd:I

    return-void
.end method

.method public static zzbbb()[Lcom/google/android/gms/internal/zzcls;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzcls;->zzjjv:[Lcom/google/android/gms/internal/zzcls;

    if-nez v0, :cond_11

    sget-object v1, Lcom/google/android/gms/internal/zzfjq;->zzpnk:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/zzcls;->zzjjv:[Lcom/google/android/gms/internal/zzcls;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzcls;

    sput-object v0, Lcom/google/android/gms/internal/zzcls;->zzjjv:[Lcom/google/android/gms/internal/zzcls;

    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/zzcls;->zzjjv:[Lcom/google/android/gms/internal/zzcls;

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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzcls;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/zzcls;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcls;->zzjjw:Ljava/lang/Integer;

    if-nez v2, :cond_17

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcls;->zzjjw:Ljava/lang/Integer;

    if-eqz v2, :cond_23

    move v0, v1

    goto :goto_4

    :cond_17
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcls;->zzjjw:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcls;->zzjjw:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    move v0, v1

    goto :goto_4

    :cond_23
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcls;->zzjjx:Ljava/lang/String;

    if-nez v2, :cond_2d

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcls;->zzjjx:Ljava/lang/String;

    if-eqz v2, :cond_39

    move v0, v1

    goto :goto_4

    :cond_2d
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcls;->zzjjx:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcls;->zzjjx:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    move v0, v1

    goto :goto_4

    :cond_39
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcls;->zzjjy:[Lcom/google/android/gms/internal/zzclt;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcls;->zzjjy:[Lcom/google/android/gms/internal/zzclt;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzfjq;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    move v0, v1

    goto :goto_4

    :cond_45
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcls;->zzjjz:Ljava/lang/Boolean;

    if-nez v2, :cond_4f

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcls;->zzjjz:Ljava/lang/Boolean;

    if-eqz v2, :cond_5b

    move v0, v1

    goto :goto_4

    :cond_4f
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcls;->zzjjz:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcls;->zzjjz:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5b

    move v0, v1

    goto :goto_4

    :cond_5b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcls;->zzjka:Lcom/google/android/gms/internal/zzclu;

    if-nez v2, :cond_65

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcls;->zzjka:Lcom/google/android/gms/internal/zzclu;

    if-eqz v2, :cond_71

    move v0, v1

    goto :goto_4

    :cond_65
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcls;->zzjka:Lcom/google/android/gms/internal/zzclu;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcls;->zzjka:Lcom/google/android/gms/internal/zzclu;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzclu;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_71

    move v0, v1

    goto :goto_4

    :cond_71
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcls;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    if-eqz v2, :cond_7d

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcls;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfjo;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8c

    :cond_7d
    iget-object v2, p1, Lcom/google/android/gms/internal/zzcls;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcls;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfjo;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto/16 :goto_4

    :cond_8c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcls;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcls;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcls;->zzjjw:Ljava/lang/Integer;

    if-nez v0, :cond_48

    move v0, v1

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcls;->zzjjx:Ljava/lang/String;

    if-nez v0, :cond_4f

    move v0, v1

    :goto_1e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcls;->zzjjy:[Lcom/google/android/gms/internal/zzclt;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzfjq;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcls;->zzjjz:Ljava/lang/Boolean;

    if-nez v0, :cond_56

    move v0, v1

    :goto_2f
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcls;->zzjka:Lcom/google/android/gms/internal/zzclu;

    mul-int/lit8 v3, v0, 0x1f

    if-nez v2, :cond_5d

    move v0, v1

    :goto_37
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcls;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    if-eqz v2, :cond_46

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcls;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfjo;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_62

    :cond_46
    :goto_46
    add-int/2addr v0, v1

    return v0

    :cond_48
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcls;->zzjjw:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_16

    :cond_4f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcls;->zzjjx:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1e

    :cond_56
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcls;->zzjjz:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_2f

    :cond_5d
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzclu;->hashCode()I

    move-result v0

    goto :goto_37

    :cond_62
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcls;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfjo;->hashCode()I

    move-result v1

    goto :goto_46
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/zzfjj;)Lcom/google/android/gms/internal/zzfjs;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->zzcvt()I

    move-result v0

    sparse-switch v0, :sswitch_data_7c

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzfjm;->zza(Lcom/google/android/gms/internal/zzfjj;I)Z

    move-result v0

    if-nez v0, :cond_1

    :sswitch_e
    return-object p0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->zzcwi()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcls;->zzjjw:Ljava/lang/Integer;

    goto :goto_1

    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcls;->zzjjx:Ljava/lang/String;

    goto :goto_1

    :sswitch_21
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzfjv;->zzb(Lcom/google/android/gms/internal/zzfjj;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcls;->zzjjy:[Lcom/google/android/gms/internal/zzclt;

    if-nez v0, :cond_4d

    move v0, v1

    :goto_2c
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzclt;

    if-eqz v0, :cond_36

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcls;->zzjjy:[Lcom/google/android/gms/internal/zzclt;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_36
    :goto_36
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_51

    new-instance v3, Lcom/google/android/gms/internal/zzclt;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzclt;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzfjj;->zza(Lcom/google/android/gms/internal/zzfjs;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->zzcvt()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_4d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcls;->zzjjy:[Lcom/google/android/gms/internal/zzclt;

    array-length v0, v0

    goto :goto_2c

    :cond_51
    new-instance v3, Lcom/google/android/gms/internal/zzclt;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzclt;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzfjj;->zza(Lcom/google/android/gms/internal/zzfjs;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzcls;->zzjjy:[Lcom/google/android/gms/internal/zzclt;

    goto :goto_1

    :sswitch_60
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->zzcvz()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcls;->zzjjz:Ljava/lang/Boolean;

    goto :goto_1

    :sswitch_6b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcls;->zzjka:Lcom/google/android/gms/internal/zzclu;

    if-nez v0, :cond_76

    new-instance v0, Lcom/google/android/gms/internal/zzclu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzclu;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcls;->zzjka:Lcom/google/android/gms/internal/zzclu;

    :cond_76
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcls;->zzjka:Lcom/google/android/gms/internal/zzclu;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzfjj;->zza(Lcom/google/android/gms/internal/zzfjs;)V

    goto :goto_1

    :sswitch_data_7c
    .sparse-switch
        0x0 -> :sswitch_e
        0x8 -> :sswitch_f
        0x12 -> :sswitch_1a
        0x1a -> :sswitch_21
        0x20 -> :sswitch_60
        0x2a -> :sswitch_6b
    .end sparse-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/zzfjk;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcls;->zzjjw:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcls;->zzjjw:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfjk;->zzaa(II)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcls;->zzjjx:Ljava/lang/String;

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcls;->zzjjx:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfjk;->zzn(ILjava/lang/String;)V

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcls;->zzjjy:[Lcom/google/android/gms/internal/zzclt;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcls;->zzjjy:[Lcom/google/android/gms/internal/zzclt;

    array-length v0, v0

    if-lez v0, :cond_34

    const/4 v0, 0x0

    :goto_22
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcls;->zzjjy:[Lcom/google/android/gms/internal/zzclt;

    array-length v1, v1

    if-ge v0, v1, :cond_34

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcls;->zzjjy:[Lcom/google/android/gms/internal/zzclt;

    aget-object v1, v1, v0

    if-eqz v1, :cond_31

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzfjk;->zza(ILcom/google/android/gms/internal/zzfjs;)V

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcls;->zzjjz:Ljava/lang/Boolean;

    if-eqz v0, :cond_42

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcls;->zzjjz:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfjk;->zzl(IZ)V

    :cond_42
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcls;->zzjka:Lcom/google/android/gms/internal/zzclu;

    if-eqz v0, :cond_4c

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcls;->zzjka:Lcom/google/android/gms/internal/zzclu;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfjk;->zza(ILcom/google/android/gms/internal/zzfjs;)V

    :cond_4c
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzfjm;->zza(Lcom/google/android/gms/internal/zzfjk;)V

    return-void
.end method

.method protected final zzq()I
    .registers 6

    invoke-super {p0}, Lcom/google/android/gms/internal/zzfjm;->zzq()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcls;->zzjjw:Ljava/lang/Integer;

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcls;->zzjjw:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzfjk;->zzad(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcls;->zzjjx:Ljava/lang/String;

    if-eqz v1, :cond_20

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcls;->zzjjx:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzfjk;->zzo(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcls;->zzjjy:[Lcom/google/android/gms/internal/zzclt;

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcls;->zzjjy:[Lcom/google/android/gms/internal/zzclt;

    array-length v1, v1

    if-lez v1, :cond_42

    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_2d
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcls;->zzjjy:[Lcom/google/android/gms/internal/zzclt;

    array-length v2, v2

    if-ge v0, v2, :cond_41

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcls;->zzjjy:[Lcom/google/android/gms/internal/zzclt;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3e

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzfjk;->zzb(ILcom/google/android/gms/internal/zzfjs;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_41
    move v0, v1

    :cond_42
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcls;->zzjjz:Ljava/lang/Boolean;

    if-eqz v1, :cond_53

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcls;->zzjjz:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/android/gms/internal/zzfjk;->zzlg(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_53
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcls;->zzjka:Lcom/google/android/gms/internal/zzclu;

    if-eqz v1, :cond_5f

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcls;->zzjka:Lcom/google/android/gms/internal/zzclu;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzfjk;->zzb(ILcom/google/android/gms/internal/zzfjs;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5f
    return v0
.end method
