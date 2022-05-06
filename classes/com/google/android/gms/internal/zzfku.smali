.class public final Lcom/google/android/gms/internal/zzfku;
.super Lcom/google/android/gms/internal/zzfjm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzfjm",
        "<",
        "Lcom/google/android/gms/internal/zzfku;",
        ">;"
    }
.end annotation


# instance fields
.field public zzghq:J

.field public zzpri:Ljava/lang/String;

.field public zzprj:Ljava/lang/String;

.field public zzprk:J

.field public zzprl:Ljava/lang/String;

.field public zzprm:J

.field public zzprn:Ljava/lang/String;

.field public zzpro:Ljava/lang/String;

.field public zzprp:Ljava/lang/String;

.field public zzprq:Ljava/lang/String;

.field public zzprr:Ljava/lang/String;

.field public zzprs:I

.field public zzprt:[Lcom/google/android/gms/internal/zzfkt;


# direct methods
.method public constructor <init>()V
    .registers 5

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfjm;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfku;->zzpri:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfku;->zzprj:Ljava/lang/String;

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzfku;->zzprk:J

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfku;->zzprl:Ljava/lang/String;

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzfku;->zzprm:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzfku;->zzghq:J

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfku;->zzprn:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfku;->zzpro:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfku;->zzprp:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfku;->zzprq:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfku;->zzprr:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzfku;->zzprs:I

    invoke-static {}, Lcom/google/android/gms/internal/zzfkt;->zzdbd()[Lcom/google/android/gms/internal/zzfkt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfku;->zzprt:[Lcom/google/android/gms/internal/zzfkt;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfku;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzfku;->zzpfd:I

    return-void
.end method

.method public static zzbi([B)Lcom/google/android/gms/internal/zzfku;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzfjr;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzfku;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfku;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzfjs;->zza(Lcom/google/android/gms/internal/zzfjs;[B)Lcom/google/android/gms/internal/zzfjs;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfku;

    return-object v0
.end method


# virtual methods
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

    sparse-switch v0, :sswitch_data_a4

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzfjm;->zza(Lcom/google/android/gms/internal/zzfjj;I)Z

    move-result v0

    if-nez v0, :cond_1

    :sswitch_e
    return-object p0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfku;->zzpri:Ljava/lang/String;

    goto :goto_1

    :sswitch_16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfku;->zzprj:Ljava/lang/String;

    goto :goto_1

    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->zzcvv()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzfku;->zzprk:J

    goto :goto_1

    :sswitch_24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfku;->zzprl:Ljava/lang/String;

    goto :goto_1

    :sswitch_2b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->zzcvv()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzfku;->zzprm:J

    goto :goto_1

    :sswitch_32
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->zzcvv()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzfku;->zzghq:J

    goto :goto_1

    :sswitch_39
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfku;->zzprn:Ljava/lang/String;

    goto :goto_1

    :sswitch_40
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfku;->zzpro:Ljava/lang/String;

    goto :goto_1

    :sswitch_47
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfku;->zzprp:Ljava/lang/String;

    goto :goto_1

    :sswitch_4e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfku;->zzprq:Ljava/lang/String;

    goto :goto_1

    :sswitch_55
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfku;->zzprr:Ljava/lang/String;

    goto :goto_1

    :sswitch_5c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->zzcvw()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfku;->zzprs:I

    goto :goto_1

    :sswitch_63
    const/16 v0, 0x6a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzfjv;->zzb(Lcom/google/android/gms/internal/zzfjj;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfku;->zzprt:[Lcom/google/android/gms/internal/zzfkt;

    if-nez v0, :cond_8f

    move v0, v1

    :goto_6e
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzfkt;

    if-eqz v0, :cond_78

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfku;->zzprt:[Lcom/google/android/gms/internal/zzfkt;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_78
    :goto_78
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_93

    new-instance v3, Lcom/google/android/gms/internal/zzfkt;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzfkt;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzfjj;->zza(Lcom/google/android/gms/internal/zzfjs;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->zzcvt()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_78

    :cond_8f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfku;->zzprt:[Lcom/google/android/gms/internal/zzfkt;

    array-length v0, v0

    goto :goto_6e

    :cond_93
    new-instance v3, Lcom/google/android/gms/internal/zzfkt;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzfkt;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzfjj;->zza(Lcom/google/android/gms/internal/zzfjs;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzfku;->zzprt:[Lcom/google/android/gms/internal/zzfkt;

    goto/16 :goto_1

    nop

    :sswitch_data_a4
    .sparse-switch
        0x0 -> :sswitch_e
        0xa -> :sswitch_f
        0x12 -> :sswitch_16
        0x18 -> :sswitch_1d
        0x22 -> :sswitch_24
        0x28 -> :sswitch_2b
        0x30 -> :sswitch_32
        0x3a -> :sswitch_39
        0x42 -> :sswitch_40
        0x4a -> :sswitch_47
        0x52 -> :sswitch_4e
        0x5a -> :sswitch_55
        0x60 -> :sswitch_5c
        0x6a -> :sswitch_63
    .end sparse-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/zzfjk;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfku;->zzpri:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfku;->zzpri:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfku;->zzpri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfjk;->zzn(ILjava/lang/String;)V

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfku;->zzprj:Ljava/lang/String;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfku;->zzprj:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfku;->zzprj:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfjk;->zzn(ILjava/lang/String;)V

    :cond_2a
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzfku;->zzprk:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_36

    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzfku;->zzprk:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzfjk;->zzf(IJ)V

    :cond_36
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfku;->zzprl:Ljava/lang/String;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfku;->zzprl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfku;->zzprl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfjk;->zzn(ILjava/lang/String;)V

    :cond_4a
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzfku;->zzprm:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_56

    const/4 v0, 0x5

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzfku;->zzprm:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzfjk;->zzf(IJ)V

    :cond_56
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzfku;->zzghq:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_62

    const/4 v0, 0x6

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzfku;->zzghq:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzfjk;->zzf(IJ)V

    :cond_62
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfku;->zzprn:Ljava/lang/String;

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfku;->zzprn:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_76

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfku;->zzprn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfjk;->zzn(ILjava/lang/String;)V

    :cond_76
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfku;->zzpro:Ljava/lang/String;

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfku;->zzpro:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfku;->zzpro:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfjk;->zzn(ILjava/lang/String;)V

    :cond_8b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfku;->zzprp:Ljava/lang/String;

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfku;->zzprp:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a0

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfku;->zzprp:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfjk;->zzn(ILjava/lang/String;)V

    :cond_a0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfku;->zzprq:Ljava/lang/String;

    if-eqz v0, :cond_b5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfku;->zzprq:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b5

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfku;->zzprq:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfjk;->zzn(ILjava/lang/String;)V

    :cond_b5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfku;->zzprr:Ljava/lang/String;

    if-eqz v0, :cond_ca

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfku;->zzprr:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ca

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfku;->zzprr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfjk;->zzn(ILjava/lang/String;)V

    :cond_ca
    iget v0, p0, Lcom/google/android/gms/internal/zzfku;->zzprs:I

    if-eqz v0, :cond_d5

    const/16 v0, 0xc

    iget v1, p0, Lcom/google/android/gms/internal/zzfku;->zzprs:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfjk;->zzaa(II)V

    :cond_d5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfku;->zzprt:[Lcom/google/android/gms/internal/zzfkt;

    if-eqz v0, :cond_f2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfku;->zzprt:[Lcom/google/android/gms/internal/zzfkt;

    array-length v0, v0

    if-lez v0, :cond_f2

    const/4 v0, 0x0

    :goto_df
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfku;->zzprt:[Lcom/google/android/gms/internal/zzfkt;

    array-length v1, v1

    if-ge v0, v1, :cond_f2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfku;->zzprt:[Lcom/google/android/gms/internal/zzfkt;

    aget-object v1, v1, v0

    if-eqz v1, :cond_ef

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzfjk;->zza(ILcom/google/android/gms/internal/zzfjs;)V

    :cond_ef
    add-int/lit8 v0, v0, 0x1

    goto :goto_df

    :cond_f2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzfjm;->zza(Lcom/google/android/gms/internal/zzfjk;)V

    return-void
.end method

.method protected final zzq()I
    .registers 8

    const-wide/16 v4, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzfjm;->zzq()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfku;->zzpri:Ljava/lang/String;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfku;->zzpri:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfku;->zzpri:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzfjk;->zzo(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfku;->zzprj:Ljava/lang/String;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfku;->zzprj:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfku;->zzprj:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzfjk;->zzo(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_32
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzfku;->zzprk:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_40

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzfku;->zzprk:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzfjk;->zzc(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_40
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfku;->zzprl:Ljava/lang/String;

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfku;->zzprl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfku;->zzprl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzfjk;->zzo(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_56
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzfku;->zzprm:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_64

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzfku;->zzprm:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzfjk;->zzc(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_64
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzfku;->zzghq:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_72

    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzfku;->zzghq:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzfjk;->zzc(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_72
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfku;->zzprn:Ljava/lang/String;

    if-eqz v1, :cond_88

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfku;->zzprn:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_88

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfku;->zzprn:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzfjk;->zzo(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_88
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfku;->zzpro:Ljava/lang/String;

    if-eqz v1, :cond_9f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfku;->zzpro:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9f

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfku;->zzpro:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzfjk;->zzo(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9f
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfku;->zzprp:Ljava/lang/String;

    if-eqz v1, :cond_b6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfku;->zzprp:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b6

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfku;->zzprp:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzfjk;->zzo(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfku;->zzprq:Ljava/lang/String;

    if-eqz v1, :cond_cd

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfku;->zzprq:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cd

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfku;->zzprq:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzfjk;->zzo(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_cd
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfku;->zzprr:Ljava/lang/String;

    if-eqz v1, :cond_e4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfku;->zzprr:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e4

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfku;->zzprr:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzfjk;->zzo(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e4
    iget v1, p0, Lcom/google/android/gms/internal/zzfku;->zzprs:I

    if-eqz v1, :cond_f1

    const/16 v1, 0xc

    iget v2, p0, Lcom/google/android/gms/internal/zzfku;->zzprs:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzfjk;->zzad(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfku;->zzprt:[Lcom/google/android/gms/internal/zzfkt;

    if-eqz v1, :cond_114

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfku;->zzprt:[Lcom/google/android/gms/internal/zzfkt;

    array-length v1, v1

    if-lez v1, :cond_114

    const/4 v1, 0x0

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_fe
    iget-object v2, p0, Lcom/google/android/gms/internal/zzfku;->zzprt:[Lcom/google/android/gms/internal/zzfkt;

    array-length v2, v2

    if-ge v0, v2, :cond_113

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfku;->zzprt:[Lcom/google/android/gms/internal/zzfkt;

    aget-object v2, v2, v0

    if-eqz v2, :cond_110

    const/16 v3, 0xd

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzfjk;->zzb(ILcom/google/android/gms/internal/zzfjs;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_110
    add-int/lit8 v0, v0, 0x1

    goto :goto_fe

    :cond_113
    move v0, v1

    :cond_114
    return v0
.end method
