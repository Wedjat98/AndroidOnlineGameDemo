.class public Lcom/google/android/gms/internal/zzeja;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzejd;


# instance fields
.field private final zznbj:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zznbk:Lcom/google/android/gms/internal/zzeje;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzeje;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzeje;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_f

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeja;->zznbj:Ljava/util/Set;

    :goto_c
    iput-object p1, p0, Lcom/google/android/gms/internal/zzeja;->zznbk:Lcom/google/android/gms/internal/zzeje;

    return-void

    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeja;->zznbj:Ljava/util/Set;

    goto :goto_c
.end method


# virtual methods
.method protected zza(Lcom/google/android/gms/internal/zzeje;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .registers 10

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p4, p5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzeje;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeje;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeja;->zznbk:Lcom/google/android/gms/internal/zzeje;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeje;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_3e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeja;->zznbj:Ljava/util/Set;

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeje;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/android/gms/internal/zzeje;->zznbm:Lcom/google/android/gms/internal/zzeje;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeje;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_24

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeja;->zznbj:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_24
    const/4 v0, 0x1

    :goto_25
    if-eqz v0, :cond_43

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/gms/internal/zzeja;->zza(Lcom/google/android/gms/internal/zzeje;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzejb;->zzmqn:[I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeje;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_50

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should not reach here!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    const/4 v0, 0x0

    goto :goto_25

    :pswitch_40
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/zzeja;->zzbg(Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    :goto_43
    return-void

    :pswitch_44
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/zzeja;->zzbh(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    :pswitch_48
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/zzeja;->zzbi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    :pswitch_4c
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/zzeja;->zzbj(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_40
        :pswitch_44
        :pswitch_48
        :pswitch_4c
    .end packed-switch
.end method

.method protected zzbg(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected zzbh(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected zzbi(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected zzbj(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final zzbvy()Lcom/google/android/gms/internal/zzeje;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeja;->zznbk:Lcom/google/android/gms/internal/zzeje;

    return-object v0
.end method
