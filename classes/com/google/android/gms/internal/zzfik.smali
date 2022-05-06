.class public final Lcom/google/android/gms/internal/zzfik;
.super Lcom/google/android/gms/internal/zzffu;

# interfaces
.implements Lcom/google/android/gms/internal/zzfhg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzfik$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzffu",
        "<",
        "Lcom/google/android/gms/internal/zzfik;",
        "Lcom/google/android/gms/internal/zzfik$zza;",
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
            "Lcom/google/android/gms/internal/zzfik;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzpkn:Lcom/google/android/gms/internal/zzfik;


# instance fields
.field private zzpkl:J

.field private zzpkm:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzfik;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfik;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzfik;->zzpkn:Lcom/google/android/gms/internal/zzfik;

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

.method private final setNanos(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zzfik;->zzpkm:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzfik;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzfik;->setNanos(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzfik;J)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzfik;->zzdf(J)V

    return-void
.end method

.method public static zzczq()Lcom/google/android/gms/internal/zzfik$zza;
    .registers 3

    const/4 v2, 0x0

    sget-object v1, Lcom/google/android/gms/internal/zzfik;->zzpkn:Lcom/google/android/gms/internal/zzfik;

    sget v0, Lcom/google/android/gms/internal/zzffu$zzg;->zzphj:I

    invoke-virtual {v1, v0, v2, v2}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzffu$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzffu$zza;->zza(Lcom/google/android/gms/internal/zzffu;)Lcom/google/android/gms/internal/zzffu$zza;

    check-cast v0, Lcom/google/android/gms/internal/zzffu$zza;

    check-cast v0, Lcom/google/android/gms/internal/zzfik$zza;

    return-object v0
.end method

.method public static zzczr()Lcom/google/android/gms/internal/zzfik;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzfik;->zzpkn:Lcom/google/android/gms/internal/zzfik;

    return-object v0
.end method

.method static synthetic zzczs()Lcom/google/android/gms/internal/zzfik;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzfik;->zzpkn:Lcom/google/android/gms/internal/zzfik;

    return-object v0
.end method

.method private final zzdf(J)V
    .registers 4

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzfik;->zzpkl:J

    return-void
.end method


# virtual methods
.method public final getNanos()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzfik;->zzpkm:I

    return v0
.end method

.method public final getSeconds()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzfik;->zzpkl:J

    return-wide v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    const-wide/16 v10, 0x0

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    sget-object v1, Lcom/google/android/gms/internal/zzfil;->zzbbi:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_ee

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_14
    new-instance p0, Lcom/google/android/gms/internal/zzfik;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfik;-><init>()V

    :goto_19
    return-object p0

    :pswitch_1a
    sget-object p0, Lcom/google/android/gms/internal/zzfik;->zzpkn:Lcom/google/android/gms/internal/zzfik;

    goto :goto_19

    :pswitch_1d
    move-object p0, v0

    goto :goto_19

    :pswitch_1f
    new-instance p0, Lcom/google/android/gms/internal/zzfik$zza;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzfik$zza;-><init>(Lcom/google/android/gms/internal/zzfil;)V

    goto :goto_19

    :pswitch_25
    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/zzffu$zzh;

    check-cast p3, Lcom/google/android/gms/internal/zzfik;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzfik;->zzpkl:J

    cmp-long v1, v2, v10

    if-eqz v1, :cond_56

    move v1, v7

    :goto_31
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzfik;->zzpkl:J

    iget-wide v4, p3, Lcom/google/android/gms/internal/zzfik;->zzpkl:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_58

    move v4, v7

    :goto_3a
    iget-wide v5, p3, Lcom/google/android/gms/internal/zzfik;->zzpkl:J

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/zzffu$zzh;->zza(ZJZJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzfik;->zzpkl:J

    iget v1, p0, Lcom/google/android/gms/internal/zzfik;->zzpkm:I

    if-eqz v1, :cond_5a

    move v1, v7

    :goto_47
    iget v2, p0, Lcom/google/android/gms/internal/zzfik;->zzpkm:I

    iget v3, p3, Lcom/google/android/gms/internal/zzfik;->zzpkm:I

    if-eqz v3, :cond_5c

    :goto_4d
    iget v3, p3, Lcom/google/android/gms/internal/zzfik;->zzpkm:I

    invoke-interface {v0, v1, v2, v7, v3}, Lcom/google/android/gms/internal/zzffu$zzh;->zza(ZIZI)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfik;->zzpkm:I

    goto :goto_19

    :cond_56
    move v1, v8

    goto :goto_31

    :cond_58
    move v4, v8

    goto :goto_3a

    :cond_5a
    move v1, v8

    goto :goto_47

    :cond_5c
    move v7, v8

    goto :goto_4d

    :pswitch_5e
    check-cast p2, Lcom/google/android/gms/internal/zzffb;

    check-cast p3, Lcom/google/android/gms/internal/zzffm;

    if-nez p3, :cond_6a

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_6a
    move v1, v8

    :cond_6b
    :goto_6b
    if-nez v1, :cond_c4

    :try_start_6d
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzffb;->zzcvt()I

    move-result v0

    sparse-switch v0, :sswitch_data_106

    and-int/lit8 v2, v0, 0x7

    const/4 v3, 0x4

    if-ne v2, v3, :cond_80

    move v0, v8

    :goto_7a
    if-nez v0, :cond_6b

    move v1, v7

    goto :goto_6b

    :sswitch_7e
    move v1, v7

    goto :goto_6b

    :cond_80
    iget-object v2, p0, Lcom/google/android/gms/internal/zzffu;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    invoke-static {}, Lcom/google/android/gms/internal/zzfio;->zzczu()Lcom/google/android/gms/internal/zzfio;

    move-result-object v3

    if-ne v2, v3, :cond_8e

    invoke-static {}, Lcom/google/android/gms/internal/zzfio;->zzczv()Lcom/google/android/gms/internal/zzfio;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzffu;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    :cond_8e
    iget-object v2, p0, Lcom/google/android/gms/internal/zzffu;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    invoke-virtual {v2, v0, p2}, Lcom/google/android/gms/internal/zzfio;->zzb(ILcom/google/android/gms/internal/zzffb;)Z

    move-result v0

    goto :goto_7a

    :sswitch_95
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzffb;->zzcvv()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzfik;->zzpkl:J
    :try_end_9b
    .catch Lcom/google/android/gms/internal/zzfge; {:try_start_6d .. :try_end_9b} :catch_9c
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_9b} :catch_b0
    .catchall {:try_start_6d .. :try_end_9b} :catchall_a7

    goto :goto_6b

    :catch_9c
    move-exception v0

    :try_start_9d
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzfge;->zzi(Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzfge;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_a7
    .catchall {:try_start_9d .. :try_end_a7} :catchall_a7

    :catchall_a7
    move-exception v0

    throw v0

    :sswitch_a9
    :try_start_a9
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzffb;->zzcvw()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfik;->zzpkm:I
    :try_end_af
    .catch Lcom/google/android/gms/internal/zzfge; {:try_start_a9 .. :try_end_af} :catch_9c
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_af} :catch_b0
    .catchall {:try_start_a9 .. :try_end_af} :catchall_a7

    goto :goto_6b

    :catch_b0
    move-exception v0

    :try_start_b1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Lcom/google/android/gms/internal/zzfge;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzfge;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/zzfge;->zzi(Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzfge;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_c4
    .catchall {:try_start_b1 .. :try_end_c4} :catchall_a7

    :cond_c4
    :pswitch_c4
    sget-object p0, Lcom/google/android/gms/internal/zzfik;->zzpkn:Lcom/google/android/gms/internal/zzfik;

    goto/16 :goto_19

    :pswitch_c8
    sget-object v0, Lcom/google/android/gms/internal/zzfik;->zzbbk:Lcom/google/android/gms/internal/zzfhk;

    if-nez v0, :cond_dd

    const-class v1, Lcom/google/android/gms/internal/zzfik;

    monitor-enter v1

    :try_start_cf
    sget-object v0, Lcom/google/android/gms/internal/zzfik;->zzbbk:Lcom/google/android/gms/internal/zzfhk;

    if-nez v0, :cond_dc

    new-instance v0, Lcom/google/android/gms/internal/zzffu$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzfik;->zzpkn:Lcom/google/android/gms/internal/zzfik;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzffu$zzb;-><init>(Lcom/google/android/gms/internal/zzffu;)V

    sput-object v0, Lcom/google/android/gms/internal/zzfik;->zzbbk:Lcom/google/android/gms/internal/zzfhk;

    :cond_dc
    monitor-exit v1
    :try_end_dd
    .catchall {:try_start_cf .. :try_end_dd} :catchall_e1

    :cond_dd
    sget-object p0, Lcom/google/android/gms/internal/zzfik;->zzbbk:Lcom/google/android/gms/internal/zzfhk;

    goto/16 :goto_19

    :catchall_e1
    move-exception v0

    :try_start_e2
    monitor-exit v1
    :try_end_e3
    .catchall {:try_start_e2 .. :try_end_e3} :catchall_e1

    throw v0

    :pswitch_e4
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    goto/16 :goto_19

    :pswitch_ea
    move-object p0, v0

    goto/16 :goto_19

    nop

    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_14
        :pswitch_1a
        :pswitch_1d
        :pswitch_1f
        :pswitch_25
        :pswitch_5e
        :pswitch_c4
        :pswitch_c8
        :pswitch_e4
        :pswitch_ea
    .end packed-switch

    :sswitch_data_106
    .sparse-switch
        0x0 -> :sswitch_7e
        0x8 -> :sswitch_95
        0x10 -> :sswitch_a9
    .end sparse-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/zzffg;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzfik;->zzpkl:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzfik;->zzpkl:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzffg;->zza(IJ)V

    :cond_e
    iget v0, p0, Lcom/google/android/gms/internal/zzfik;->zzpkm:I

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/zzfik;->zzpkm:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzffg;->zzaa(II)V

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfik;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfio;->zza(Lcom/google/android/gms/internal/zzffg;)V

    return-void
.end method

.method public final zzho()I
    .registers 7

    iget v0, p0, Lcom/google/android/gms/internal/zzfik;->zzpgs:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzfik;->zzpkl:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_18

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzfik;->zzpkl:J

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/zzffg;->zzc(IJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_18
    iget v1, p0, Lcom/google/android/gms/internal/zzfik;->zzpkm:I

    if-eqz v1, :cond_24

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/zzfik;->zzpkm:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzffg;->zzad(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_24
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfik;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfio;->zzho()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzfik;->zzpgs:I

    goto :goto_5
.end method
