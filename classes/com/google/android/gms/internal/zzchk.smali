.class public final Lcom/google/android/gms/internal/zzchk;
.super Lcom/google/android/gms/internal/zzcjl;


# static fields
.field private static zzjbq:[Ljava/lang/String;

.field private static zzjbr:[Ljava/lang/String;

.field private static zzjbs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/android/gms/measurement/AppMeasurement$Event;->zziwg:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/zzchk;->zzjbq:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/measurement/AppMeasurement$Param;->zziwi:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/zzchk;->zzjbr:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/measurement/AppMeasurement$UserProperty;->zziwn:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/zzchk;->zzjbs:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzcim;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcjl;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    return-void
.end method

.method private static zza(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    array-length v3, p2

    if-ne v0, v3, :cond_4d

    move v0, v1

    :goto_10
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    array-length v0, p1

    array-length v3, p3

    if-ne v0, v3, :cond_4f

    :goto_17
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    :goto_1a
    array-length v0, p1

    if-ge v2, v0, :cond_4c

    aget-object v0, p1, v2

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzclq;->zzas(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    monitor-enter p3

    :try_start_26
    aget-object v0, p3, v2

    if-nez v0, :cond_49

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p2, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v2

    :cond_49
    aget-object p0, p3, v2

    monitor-exit p3

    :cond_4c
    return-object p0

    :cond_4d
    move v0, v2

    goto :goto_10

    :cond_4f
    move v1, v2

    goto :goto_17

    :catchall_51
    move-exception v0

    monitor-exit p3
    :try_end_53
    .catchall {:try_start_26 .. :try_end_53} :catchall_51

    throw v0

    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a
.end method

.method private static zza(Ljava/lang/StringBuilder;I)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_b

    const-string v1, "  "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    return-void
.end method

.method private final zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/zzclt;)V
    .registers 10

    if-nez p3, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "filter {\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "complement"

    iget-object v1, p3, Lcom/google/android/gms/internal/zzclt;->zzjke:Ljava/lang/Boolean;

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "param_name"

    iget-object v1, p3, Lcom/google/android/gms/internal/zzclt;->zzjkf:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzchk;->zzji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, p2, 0x1

    const-string v0, "string_filter"

    iget-object v2, p3, Lcom/google/android/gms/internal/zzclt;->zzjkc:Lcom/google/android/gms/internal/zzclw;

    if-eqz v2, :cond_98

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " {\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/google/android/gms/internal/zzclw;->zzjko:Ljava/lang/Integer;

    if-eqz v0, :cond_44

    const-string v0, "UNKNOWN_MATCH_TYPE"

    iget-object v3, v2, Lcom/google/android/gms/internal/zzclw;->zzjko:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_ac

    :goto_3f
    const-string v3, "match_type"

    invoke-static {p1, v1, v3, v0}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_44
    const-string v0, "expression"

    iget-object v3, v2, Lcom/google/android/gms/internal/zzclw;->zzjkp:Ljava/lang/String;

    invoke-static {p1, v1, v0, v3}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "case_sensitive"

    iget-object v3, v2, Lcom/google/android/gms/internal/zzclw;->zzjkq:Ljava/lang/Boolean;

    invoke-static {p1, v1, v0, v3}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/google/android/gms/internal/zzclw;->zzjkr:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_90

    add-int/lit8 v0, v1, 0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "expression_list {\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzclw;->zzjkr:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_65
    if-ge v0, v3, :cond_8b

    aget-object v4, v2, v0

    add-int/lit8 v5, v1, 0x2

    invoke-static {p1, v5}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    :pswitch_79
    const-string v0, "REGEXP"

    goto :goto_3f

    :pswitch_7c
    const-string v0, "BEGINS_WITH"

    goto :goto_3f

    :pswitch_7f
    const-string v0, "ENDS_WITH"

    goto :goto_3f

    :pswitch_82
    const-string v0, "PARTIAL"

    goto :goto_3f

    :pswitch_85
    const-string v0, "EXACT"

    goto :goto_3f

    :pswitch_88
    const-string v0, "IN_LIST"

    goto :goto_3f

    :cond_8b
    const-string v0, "}\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_90
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "}\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_98
    add-int/lit8 v0, p2, 0x1

    const-string v1, "number_filter"

    iget-object v2, p3, Lcom/google/android/gms/internal/zzclt;->zzjkd:Lcom/google/android/gms/internal/zzclu;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/zzclu;)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "}\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    nop

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_79
        :pswitch_7c
        :pswitch_7f
        :pswitch_82
        :pswitch_85
        :pswitch_88
    .end packed-switch
.end method

.method private final zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/zzclu;)V
    .registers 7

    if-nez p4, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " {\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p4, Lcom/google/android/gms/internal/zzclu;->zzjkg:Ljava/lang/Integer;

    if-eqz v0, :cond_22

    const-string v0, "UNKNOWN_COMPARISON_TYPE"

    iget-object v1, p4, Lcom/google/android/gms/internal/zzclu;->zzjkg:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_54

    :goto_1d
    const-string v1, "comparison_type"

    invoke-static {p1, p2, v1, v0}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_22
    const-string v0, "match_as_float"

    iget-object v1, p4, Lcom/google/android/gms/internal/zzclu;->zzjkh:Ljava/lang/Boolean;

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "comparison_value"

    iget-object v1, p4, Lcom/google/android/gms/internal/zzclu;->zzjki:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "min_comparison_value"

    iget-object v1, p4, Lcom/google/android/gms/internal/zzclu;->zzjkj:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "max_comparison_value"

    iget-object v1, p4, Lcom/google/android/gms/internal/zzclu;->zzjkk:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "}\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_47
    const-string v0, "LESS_THAN"

    goto :goto_1d

    :pswitch_4a
    const-string v0, "GREATER_THAN"

    goto :goto_1d

    :pswitch_4d
    const-string v0, "EQUAL"

    goto :goto_1d

    :pswitch_50
    const-string v0, "BETWEEN"

    goto :goto_1d

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_47
        :pswitch_4a
        :pswitch_4d
        :pswitch_50
    .end packed-switch
.end method

.method private static zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/zzcmf;)V
    .registers 15

    const/16 v10, 0xa

    const/4 v0, 0x0

    if-nez p3, :cond_6

    :goto_5
    return-void

    :cond_6
    add-int/lit8 v4, p1, 0x1

    invoke-static {p0, v4}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lcom/google/android/gms/internal/zzcmf;->zzjmq:[J

    if-eqz v1, :cond_41

    add-int/lit8 v1, v4, 0x1

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    const-string v1, "results: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p3, Lcom/google/android/gms/internal/zzcmf;->zzjmq:[J

    array-length v6, v5

    move v1, v0

    move v2, v0

    :goto_26
    if-ge v1, v6, :cond_3e

    aget-wide v8, v5, v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    add-int/lit8 v3, v2, 0x1

    if-eqz v2, :cond_37

    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_37
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_26

    :cond_3e
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_41
    iget-object v1, p3, Lcom/google/android/gms/internal/zzcmf;->zzjmp:[J

    if-eqz v1, :cond_6e

    add-int/lit8 v1, v4, 0x1

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    const-string v1, "status: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p3, Lcom/google/android/gms/internal/zzcmf;->zzjmp:[J

    array-length v5, v3

    move v1, v0

    :goto_53
    if-ge v0, v5, :cond_6b

    aget-wide v6, v3, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    add-int/lit8 v2, v1, 0x1

    if-eqz v1, :cond_64

    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_64
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_53

    :cond_6b
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6e
    invoke-static {p0, v4}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "}\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method private static zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .registers 5

    if-nez p3, :cond_3

    :goto_2
    return-void

    :cond_3
    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private final zza(Ljava/lang/StringBuilder;I[Lcom/google/android/gms/internal/zzcma;)V
    .registers 10

    const/4 v5, 0x2

    if-nez p3, :cond_4

    :cond_3
    return-void

    :cond_4
    array-length v1, p3

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v1, :cond_3

    aget-object v2, p3, v0

    if-eqz v2, :cond_38

    invoke-static {p1, v5}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    const-string v3, "audience_membership {\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "audience_id"

    iget-object v4, v2, Lcom/google/android/gms/internal/zzcma;->zzjjs:Ljava/lang/Integer;

    invoke-static {p1, v5, v3, v4}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v3, "new_audience"

    iget-object v4, v2, Lcom/google/android/gms/internal/zzcma;->zzjlf:Ljava/lang/Boolean;

    invoke-static {p1, v5, v3, v4}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v3, "current_data"

    iget-object v4, v2, Lcom/google/android/gms/internal/zzcma;->zzjld:Lcom/google/android/gms/internal/zzcmf;

    invoke-static {p1, v5, v3, v4}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/zzcmf;)V

    const-string v3, "previous_data"

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcma;->zzjle:Lcom/google/android/gms/internal/zzcmf;

    invoke-static {p1, v5, v3, v2}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/zzcmf;)V

    invoke-static {p1, v5}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    const-string v2, "}\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private final zza(Ljava/lang/StringBuilder;I[Lcom/google/android/gms/internal/zzcmb;)V
    .registers 15

    const/4 v1, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x2

    if-nez p3, :cond_6

    :cond_5
    return-void

    :cond_6
    array-length v3, p3

    move v2, v1

    :goto_8
    if-ge v2, v3, :cond_5

    aget-object v0, p3, v2

    if-eqz v0, :cond_7d

    invoke-static {p1, v9}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    const-string v4, "event {\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "name"

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/zzchk;->zzjh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v9, v4, v5}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v4, "timestamp_millis"

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcmb;->zzjli:Ljava/lang/Long;

    invoke-static {p1, v9, v4, v5}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v4, "previous_timestamp_millis"

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcmb;->zzjlj:Ljava/lang/Long;

    invoke-static {p1, v9, v4, v5}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v4, "count"

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcmb;->count:Ljava/lang/Integer;

    invoke-static {p1, v9, v4, v5}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    if-eqz v4, :cond_75

    array-length v5, v4

    move v0, v1

    :goto_3c
    if-ge v0, v5, :cond_75

    aget-object v6, v4, v0

    if-eqz v6, :cond_72

    invoke-static {p1, v10}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    const-string v7, "param {\n"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "name"

    iget-object v8, v6, Lcom/google/android/gms/internal/zzcmc;->name:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/zzchk;->zzji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v10, v7, v8}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v7, "string_value"

    iget-object v8, v6, Lcom/google/android/gms/internal/zzcmc;->zzgcc:Ljava/lang/String;

    invoke-static {p1, v10, v7, v8}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v7, "int_value"

    iget-object v8, v6, Lcom/google/android/gms/internal/zzcmc;->zzjll:Ljava/lang/Long;

    invoke-static {p1, v10, v7, v8}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v7, "double_value"

    iget-object v6, v6, Lcom/google/android/gms/internal/zzcmc;->zzjjl:Ljava/lang/Double;

    invoke-static {p1, v10, v7, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1, v10}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    const-string v6, "}\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_72
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_75
    invoke-static {p1, v9}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "}\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8
.end method

.method private final zza(Ljava/lang/StringBuilder;I[Lcom/google/android/gms/internal/zzcmg;)V
    .registers 10

    const/4 v5, 0x2

    if-nez p3, :cond_4

    :cond_3
    return-void

    :cond_4
    array-length v1, p3

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v1, :cond_3

    aget-object v2, p3, v0

    if-eqz v2, :cond_43

    invoke-static {p1, v5}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    const-string v3, "user_property {\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "set_timestamp_millis"

    iget-object v4, v2, Lcom/google/android/gms/internal/zzcmg;->zzjms:Ljava/lang/Long;

    invoke-static {p1, v5, v3, v4}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v3, "name"

    iget-object v4, v2, Lcom/google/android/gms/internal/zzcmg;->name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v5, v3, v4}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v3, "string_value"

    iget-object v4, v2, Lcom/google/android/gms/internal/zzcmg;->zzgcc:Ljava/lang/String;

    invoke-static {p1, v5, v3, v4}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v3, "int_value"

    iget-object v4, v2, Lcom/google/android/gms/internal/zzcmg;->zzjll:Ljava/lang/Long;

    invoke-static {p1, v5, v3, v4}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v3, "double_value"

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcmg;->zzjjl:Ljava/lang/Double;

    invoke-static {p1, v5, v3, v2}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1, v5}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    const-string v2, "}\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private final zzazc()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchk;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzchm;->zzae(I)Z

    move-result v0

    return v0
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzcgx;)Ljava/lang/String;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzchk;->zzazc()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgx;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgx;->zzayx()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzchk;->zzx(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzcgv;)Ljava/lang/String;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzchk;->zzazc()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgv;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event{appId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgv;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgv;->mName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzchk;->zzjh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgv;->zzizj:Lcom/google/android/gms/internal/zzcgx;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzchk;->zzb(Lcom/google/android/gms/internal/zzcgx;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzcls;)Ljava/lang/String;
    .registers 9

    const/4 v6, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_7

    const-string v0, "null"

    :goto_6
    return-object v0

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nevent_filter {\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "filter_id"

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcls;->zzjjw:Ljava/lang/Integer;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v2, "event_name"

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcls;->zzjjx:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/zzchk;->zzjh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v2, "event_count_filter"

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcls;->zzjka:Lcom/google/android/gms/internal/zzclu;

    invoke-direct {p0, v1, v6, v2, v3}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/zzclu;)V

    const-string v2, "  filters {\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcls;->zzjjy:[Lcom/google/android/gms/internal/zzclt;

    array-length v3, v2

    :goto_32
    if-ge v0, v3, :cond_3d

    aget-object v4, v2, v0

    const/4 v5, 0x2

    invoke-direct {p0, v1, v5, v4}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/zzclt;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_3d
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "}\n}\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzclv;)Ljava/lang/String;
    .registers 6

    const/4 v3, 0x0

    if-nez p1, :cond_6

    const-string v0, "null"

    :goto_5
    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nproperty_filter {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "filter_id"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzclv;->zzjjw:Ljava/lang/Integer;

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v1, "property_name"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzclv;->zzjkm:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzclv;->zzjkn:Lcom/google/android/gms/internal/zzclt;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/zzclt;)V

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzcmd;)Ljava/lang/String;
    .registers 13

    const/4 v10, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\nbatch {\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcmd;->zzjlm:[Lcom/google/android/gms/internal/zzcme;

    if-eqz v0, :cond_115

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcmd;->zzjlm:[Lcom/google/android/gms/internal/zzcme;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v3, :cond_115

    aget-object v4, v2, v0

    if-eqz v4, :cond_111

    if-eqz v4, :cond_111

    invoke-static {v1, v10}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    const-string v5, "bundle {\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "protocol_version"

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcme;->zzjlo:Ljava/lang/Integer;

    invoke-static {v1, v10, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "platform"

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcme;->zzjlw:Ljava/lang/String;

    invoke-static {v1, v10, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "gmp_version"

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcme;->zzjma:Ljava/lang/Long;

    invoke-static {v1, v10, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "uploading_gmp_version"

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcme;->zzjmb:Ljava/lang/Long;

    invoke-static {v1, v10, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "config_version"

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcme;->zzjmn:Ljava/lang/Long;

    invoke-static {v1, v10, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "gmp_app_id"

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcme;->zzixs:Ljava/lang/String;

    invoke-static {v1, v10, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "app_id"

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    invoke-static {v1, v10, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "app_version"

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcme;->zzifm:Ljava/lang/String;

    invoke-static {v1, v10, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "app_version_major"

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcme;->zzjmj:Ljava/lang/Integer;

    invoke-static {v1, v10, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "firebase_instance_id"

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcme;->zziya:Ljava/lang/String;

    invoke-static {v1, v10, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "dev_cert_hash"

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcme;->zzjmf:Ljava/lang/Long;

    invoke-static {v1, v10, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "app_store"

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcme;->zzixt:Ljava/lang/String;

    invoke-static {v1, v10, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "upload_timestamp_millis"

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcme;->zzjlr:Ljava/lang/Long;

    invoke-static {v1, v10, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "start_timestamp_millis"

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcme;->zzjls:Ljava/lang/Long;

    invoke-static {v1, v10, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "end_timestamp_millis"

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcme;->zzjlt:Ljava/lang/Long;

    invoke-static {v1, v10, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "previous_bundle_start_timestamp_millis"

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcme;->zzjlu:Ljava/lang/Long;

    invoke-static {v1, v10, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "previous_bundle_end_timestamp_millis"

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcme;->zzjlv:Ljava/lang/Long;

    invoke-static {v1, v10, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "app_instance_id"

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcme;->zzjme:Ljava/lang/String;

    invoke-static {v1, v10, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "resettable_device_id"

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcme;->zzjmc:Ljava/lang/String;

    invoke-static {v1, v10, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "device_id"

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcme;->zzjmm:Ljava/lang/String;

    invoke-static {v1, v10, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "limited_ad_tracking"

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcme;->zzjmd:Ljava/lang/Boolean;

    invoke-static {v1, v10, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "os_version"

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcme;->zzdb:Ljava/lang/String;

    invoke-static {v1, v10, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "device_model"

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcme;->zzjlx:Ljava/lang/String;

    invoke-static {v1, v10, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "user_default_language"

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcme;->zzjly:Ljava/lang/String;

    invoke-static {v1, v10, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "time_zone_offset_minutes"

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcme;->zzjlz:Ljava/lang/Integer;

    invoke-static {v1, v10, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "bundle_sequential_index"

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcme;->zzjmg:Ljava/lang/Integer;

    invoke-static {v1, v10, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "service_upload"

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcme;->zzjmh:Ljava/lang/Boolean;

    invoke-static {v1, v10, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v5, "health_monitor"

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcme;->zzixw:Ljava/lang/String;

    invoke-static {v1, v10, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v5, v4, Lcom/google/android/gms/internal/zzcme;->zzfkk:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_fa

    const-string v5, "android_id"

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcme;->zzfkk:Ljava/lang/Long;

    invoke-static {v1, v10, v5, v6}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_fa
    iget-object v5, v4, Lcom/google/android/gms/internal/zzcme;->zzjlq:[Lcom/google/android/gms/internal/zzcmg;

    invoke-direct {p0, v1, v10, v5}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I[Lcom/google/android/gms/internal/zzcmg;)V

    iget-object v5, v4, Lcom/google/android/gms/internal/zzcme;->zzjmi:[Lcom/google/android/gms/internal/zzcma;

    invoke-direct {p0, v1, v10, v5}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I[Lcom/google/android/gms/internal/zzcma;)V

    iget-object v4, v4, Lcom/google/android/gms/internal/zzcme;->zzjlp:[Lcom/google/android/gms/internal/zzcmb;

    invoke-direct {p0, v1, v10, v4}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I[Lcom/google/android/gms/internal/zzcmb;)V

    invoke-static {v1, v10}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/StringBuilder;I)V

    const-string v4, "}\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_111
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_13

    :cond_115
    const-string v0, "}\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawi()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawi()V

    return-void
.end method

.method public final bridge synthetic zzawj()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawj()V

    return-void
.end method

.method public final bridge synthetic zzawk()Lcom/google/android/gms/internal/zzcgd;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawk()Lcom/google/android/gms/internal/zzcgd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawl()Lcom/google/android/gms/internal/zzcgk;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawl()Lcom/google/android/gms/internal/zzcgk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawm()Lcom/google/android/gms/internal/zzcjn;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawm()Lcom/google/android/gms/internal/zzcjn;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawn()Lcom/google/android/gms/internal/zzchh;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawn()Lcom/google/android/gms/internal/zzchh;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawo()Lcom/google/android/gms/internal/zzcgu;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawo()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawp()Lcom/google/android/gms/internal/zzckg;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawp()Lcom/google/android/gms/internal/zzckg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawq()Lcom/google/android/gms/internal/zzckc;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawq()Lcom/google/android/gms/internal/zzckc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawr()Lcom/google/android/gms/internal/zzchi;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawr()Lcom/google/android/gms/internal/zzchi;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaws()Lcom/google/android/gms/internal/zzcgo;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawt()Lcom/google/android/gms/internal/zzchk;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawu()Lcom/google/android/gms/internal/zzclq;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawv()Lcom/google/android/gms/internal/zzcig;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawv()Lcom/google/android/gms/internal/zzcig;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaww()Lcom/google/android/gms/internal/zzclf;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzaww()Lcom/google/android/gms/internal/zzclf;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawx()Lcom/google/android/gms/internal/zzcih;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawy()Lcom/google/android/gms/internal/zzchm;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawz()Lcom/google/android/gms/internal/zzchx;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaxa()Lcom/google/android/gms/internal/zzcgn;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzaxa()Lcom/google/android/gms/internal/zzcgn;

    move-result-object v0

    return-object v0
.end method

.method protected final zzaxz()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected final zzb(Lcom/google/android/gms/internal/zzcha;)Ljava/lang/String;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzchk;->zzazc()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcha;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "origin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcha;->zziyf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzchk;->zzjh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcha;->zzizt:Lcom/google/android/gms/internal/zzcgx;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzchk;->zzb(Lcom/google/android/gms/internal/zzcgx;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method protected final zzjh(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    :cond_3
    :goto_3
    return-object p1

    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzchk;->zzazc()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/gms/measurement/AppMeasurement$Event;->zziwh:[Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/measurement/AppMeasurement$Event;->zziwg:[Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/zzchk;->zzjbq:[Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3
.end method

.method protected final zzji(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    :cond_3
    :goto_3
    return-object p1

    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzchk;->zzazc()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/gms/measurement/AppMeasurement$Param;->zziwj:[Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/measurement/AppMeasurement$Param;->zziwi:[Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/zzchk;->zzjbr:[Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3
.end method

.method protected final zzjj(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    :cond_3
    :goto_3
    return-object p1

    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzchk;->zzazc()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "_exp_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "experiment_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_2e
    sget-object v0, Lcom/google/android/gms/measurement/AppMeasurement$UserProperty;->zziwo:[Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/measurement/AppMeasurement$UserProperty;->zziwn:[Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/zzchk;->zzjbs:[Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzchk;->zza(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3
.end method

.method public final bridge synthetic zzve()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzve()V

    return-void
.end method

.method public final bridge synthetic zzws()Lcom/google/android/gms/common/util/zzd;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzws()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    return-object v0
.end method

.method protected final zzx(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzchk;->zzazc()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_47

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_33
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzchk;->zzji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1c

    :cond_47
    const-string v3, "Bundle[{"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    :cond_4d
    const-string v0, "}]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method
