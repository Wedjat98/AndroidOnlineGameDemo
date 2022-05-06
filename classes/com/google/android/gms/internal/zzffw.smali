.class public final Lcom/google/android/gms/internal/zzffw;
.super Lcom/google/android/gms/internal/zzffu;

# interfaces
.implements Lcom/google/android/gms/internal/zzfhg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzffw$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzffu",
        "<",
        "Lcom/google/android/gms/internal/zzffw;",
        "Lcom/google/android/gms/internal/zzffw$zza;",
        ">;",
        "Lcom/google/android/gms/internal/zzfhg;"
    }
.end annotation


# static fields
.field private static volatile zzbbk:Lcom/google/android/gms/internal/zzfhk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzfhk",
            "<",
            "Lcom/google/android/gms/internal/zzffw;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzphr:Lcom/google/android/gms/internal/zzffw;


# instance fields
.field private zzphq:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzffw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzffw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzffw;->zzphr:Lcom/google/android/gms/internal/zzffw;

    sget v1, Lcom/google/android/gms/internal/zzffu$zzg;->zzphh:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzffu;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfio;->zzbiy()V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzffu;-><init>()V

    return-void
.end method

.method private final setValue(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zzffw;->zzphq:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzffw;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzffw;->setValue(I)V

    return-void
.end method

.method public static zzcxw()Lcom/google/android/gms/internal/zzffw$zza;
    .registers 3

    const/4 v2, 0x0

    sget-object v1, Lcom/google/android/gms/internal/zzffw;->zzphr:Lcom/google/android/gms/internal/zzffw;

    sget v0, Lcom/google/android/gms/internal/zzffu$zzg;->zzphj:I

    invoke-virtual {v1, v0, v2, v2}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzffu$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzffu$zza;->zza(Lcom/google/android/gms/internal/zzffu;)Lcom/google/android/gms/internal/zzffu$zza;

    check-cast v0, Lcom/google/android/gms/internal/zzffu$zza;

    check-cast v0, Lcom/google/android/gms/internal/zzffw$zza;

    return-object v0
.end method

.method public static zzcxx()Lcom/google/android/gms/internal/zzffw;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzffw;->zzphr:Lcom/google/android/gms/internal/zzffw;

    return-object v0
.end method

.method static synthetic zzcxy()Lcom/google/android/gms/internal/zzffw;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzffw;->zzphr:Lcom/google/android/gms/internal/zzffw;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzffw;->zzphq:I

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v3, Lcom/google/android/gms/internal/zzffx;->zzbbi:[I

    add-int/lit8 v4, p1, -0x1

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_c8

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_12
    new-instance p0, Lcom/google/android/gms/internal/zzffw;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzffw;-><init>()V

    :goto_17
    return-object p0

    :pswitch_18
    sget-object p0, Lcom/google/android/gms/internal/zzffw;->zzphr:Lcom/google/android/gms/internal/zzffw;

    goto :goto_17

    :pswitch_1b
    move-object p0, v0

    goto :goto_17

    :pswitch_1d
    new-instance p0, Lcom/google/android/gms/internal/zzffw$zza;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzffw$zza;-><init>(Lcom/google/android/gms/internal/zzffx;)V

    goto :goto_17

    :pswitch_23
    check-cast p2, Lcom/google/android/gms/internal/zzffu$zzh;

    check-cast p3, Lcom/google/android/gms/internal/zzffw;

    iget v0, p0, Lcom/google/android/gms/internal/zzffw;->zzphq:I

    if-eqz v0, :cond_3b

    move v0, v1

    :goto_2c
    iget v3, p0, Lcom/google/android/gms/internal/zzffw;->zzphq:I

    iget v4, p3, Lcom/google/android/gms/internal/zzffw;->zzphq:I

    if-eqz v4, :cond_3d

    :goto_32
    iget v2, p3, Lcom/google/android/gms/internal/zzffw;->zzphq:I

    invoke-interface {p2, v0, v3, v1, v2}, Lcom/google/android/gms/internal/zzffu$zzh;->zza(ZIZI)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzffw;->zzphq:I

    goto :goto_17

    :cond_3b
    move v0, v2

    goto :goto_2c

    :cond_3d
    move v1, v2

    goto :goto_32

    :pswitch_3f
    check-cast p2, Lcom/google/android/gms/internal/zzffb;

    check-cast p3, Lcom/google/android/gms/internal/zzffm;

    if-nez p3, :cond_4b

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_4b
    move v3, v2

    :cond_4c
    :goto_4c
    if-nez v3, :cond_9e

    :try_start_4e
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzffb;->zzcvt()I

    move-result v0

    sparse-switch v0, :sswitch_data_e0

    and-int/lit8 v4, v0, 0x7

    const/4 v5, 0x4

    if-ne v4, v5, :cond_61

    move v0, v2

    :goto_5b
    if-nez v0, :cond_4c

    move v3, v1

    goto :goto_4c

    :sswitch_5f
    move v3, v1

    goto :goto_4c

    :cond_61
    iget-object v4, p0, Lcom/google/android/gms/internal/zzffu;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    invoke-static {}, Lcom/google/android/gms/internal/zzfio;->zzczu()Lcom/google/android/gms/internal/zzfio;

    move-result-object v5

    if-ne v4, v5, :cond_6f

    invoke-static {}, Lcom/google/android/gms/internal/zzfio;->zzczv()Lcom/google/android/gms/internal/zzfio;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/zzffu;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    :cond_6f
    iget-object v4, p0, Lcom/google/android/gms/internal/zzffu;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    invoke-virtual {v4, v0, p2}, Lcom/google/android/gms/internal/zzfio;->zzb(ILcom/google/android/gms/internal/zzffb;)Z

    move-result v0

    goto :goto_5b

    :sswitch_76
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzffb;->zzcvw()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzffw;->zzphq:I
    :try_end_7c
    .catch Lcom/google/android/gms/internal/zzfge; {:try_start_4e .. :try_end_7c} :catch_7d
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_7c} :catch_8a
    .catchall {:try_start_4e .. :try_end_7c} :catchall_88

    goto :goto_4c

    :catch_7d
    move-exception v0

    :try_start_7e
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzfge;->zzi(Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzfge;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_88
    .catchall {:try_start_7e .. :try_end_88} :catchall_88

    :catchall_88
    move-exception v0

    throw v0

    :catch_8a
    move-exception v0

    :try_start_8b
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Lcom/google/android/gms/internal/zzfge;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzfge;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/zzfge;->zzi(Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzfge;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_9e
    .catchall {:try_start_8b .. :try_end_9e} :catchall_88

    :cond_9e
    :pswitch_9e
    sget-object p0, Lcom/google/android/gms/internal/zzffw;->zzphr:Lcom/google/android/gms/internal/zzffw;

    goto/16 :goto_17

    :pswitch_a2
    sget-object v0, Lcom/google/android/gms/internal/zzffw;->zzbbk:Lcom/google/android/gms/internal/zzfhk;

    if-nez v0, :cond_b7

    const-class v1, Lcom/google/android/gms/internal/zzffw;

    monitor-enter v1

    :try_start_a9
    sget-object v0, Lcom/google/android/gms/internal/zzffw;->zzbbk:Lcom/google/android/gms/internal/zzfhk;

    if-nez v0, :cond_b6

    new-instance v0, Lcom/google/android/gms/internal/zzffu$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzffw;->zzphr:Lcom/google/android/gms/internal/zzffw;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzffu$zzb;-><init>(Lcom/google/android/gms/internal/zzffu;)V

    sput-object v0, Lcom/google/android/gms/internal/zzffw;->zzbbk:Lcom/google/android/gms/internal/zzfhk;

    :cond_b6
    monitor-exit v1
    :try_end_b7
    .catchall {:try_start_a9 .. :try_end_b7} :catchall_bb

    :cond_b7
    sget-object p0, Lcom/google/android/gms/internal/zzffw;->zzbbk:Lcom/google/android/gms/internal/zzfhk;

    goto/16 :goto_17

    :catchall_bb
    move-exception v0

    :try_start_bc
    monitor-exit v1
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bb

    throw v0

    :pswitch_be
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    goto/16 :goto_17

    :pswitch_c4
    move-object p0, v0

    goto/16 :goto_17

    nop

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_12
        :pswitch_18
        :pswitch_1b
        :pswitch_1d
        :pswitch_23
        :pswitch_3f
        :pswitch_9e
        :pswitch_a2
        :pswitch_be
        :pswitch_c4
    .end packed-switch

    :sswitch_data_e0
    .sparse-switch
        0x0 -> :sswitch_5f
        0x8 -> :sswitch_76
    .end sparse-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/zzffg;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzffw;->zzphq:I

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zzffw;->zzphq:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzffg;->zzaa(II)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzffw;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfio;->zza(Lcom/google/android/gms/internal/zzffg;)V

    return-void
.end method

.method public final zzho()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/zzffw;->zzpgs:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/zzffw;->zzphq:I

    if-eqz v1, :cond_14

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zzffw;->zzphq:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzffg;->zzad(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/zzffw;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfio;->zzho()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzffw;->zzpgs:I

    goto :goto_5
.end method
