.class public final Lcom/google/android/gms/internal/zzecw;
.super Lcom/google/android/gms/internal/zzedh;


# instance fields
.field private final zzmkl:Lcom/google/android/gms/internal/zzedn;

.field private final zzmrq:Lcom/google/firebase/database/ChildEventListener;

.field private final zzmrr:Lcom/google/android/gms/internal/zzeik;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzedn;Lcom/google/firebase/database/ChildEventListener;Lcom/google/android/gms/internal/zzeik;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzedh;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzecw;->zzmkl:Lcom/google/android/gms/internal/zzedn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzecw;->zzmrq:Lcom/google/firebase/database/ChildEventListener;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzecw;->zzmrr:Lcom/google/android/gms/internal/zzeik;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/google/android/gms/internal/zzecw;

    if-eqz v0, :cond_2c

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzecw;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzecw;->zzmrq:Lcom/google/firebase/database/ChildEventListener;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzecw;->zzmrq:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzecw;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzecw;->zzmkl:Lcom/google/android/gms/internal/zzedn;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzecw;->zzmkl:Lcom/google/android/gms/internal/zzedn;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    check-cast p1, Lcom/google/android/gms/internal/zzecw;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzecw;->zzmrr:Lcom/google/android/gms/internal/zzeik;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzecw;->zzmrr:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzeik;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecw;->zzmrq:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzecw;->zzmkl:Lcom/google/android/gms/internal/zzedn;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzecw;->zzmrr:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeik;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "ChildEventRegistration"

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzedh;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/zzecw;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzecw;->zzmkl:Lcom/google/android/gms/internal/zzedn;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzecw;->zzmrq:Lcom/google/firebase/database/ChildEventListener;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzecw;-><init>(Lcom/google/android/gms/internal/zzedn;Lcom/google/firebase/database/ChildEventListener;Lcom/google/android/gms/internal/zzeik;)V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzehz;Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzeia;
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecw;->zzmkl:Lcom/google/android/gms/internal/zzedn;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzehz;->zzbyd()Lcom/google/android/gms/internal/zzejg;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzedk;->zza(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/android/gms/internal/zzedn;Lcom/google/android/gms/internal/zzedk;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzehz;->zzbyb()Lcom/google/android/gms/internal/zzejw;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/firebase/database/DatabaseReference;Lcom/google/android/gms/internal/zzejw;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzehz;->zzbyf()Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzehz;->zzbyf()Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejg;->asString()Ljava/lang/String;

    move-result-object v0

    :goto_28
    new-instance v2, Lcom/google/android/gms/internal/zzeia;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzehz;->zzbye()Lcom/google/android/gms/internal/zzeic;

    move-result-object v3

    invoke-direct {v2, v3, p0, v1, v0}, Lcom/google/android/gms/internal/zzeia;-><init>(Lcom/google/android/gms/internal/zzeic;Lcom/google/android/gms/internal/zzedh;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    return-object v2

    :cond_32
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public final zza(Lcom/google/android/gms/internal/zzeia;)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzedh;->zzbwd()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    sget-object v0, Lcom/google/android/gms/internal/zzecx;->zzmrs:[I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeia;->zzbye()Lcom/google/android/gms/internal/zzeic;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeic;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4c

    goto :goto_6

    :pswitch_17
    iget-object v0, p0, Lcom/google/android/gms/internal/zzecw;->zzmrq:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeia;->zzbyh()Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeia;->zzbyi()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/database/ChildEventListener;->onChildAdded(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    goto :goto_6

    :pswitch_25
    iget-object v0, p0, Lcom/google/android/gms/internal/zzecw;->zzmrq:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeia;->zzbyh()Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeia;->zzbyi()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/database/ChildEventListener;->onChildChanged(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    goto :goto_6

    :pswitch_33
    iget-object v0, p0, Lcom/google/android/gms/internal/zzecw;->zzmrq:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeia;->zzbyh()Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeia;->zzbyi()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/database/ChildEventListener;->onChildMoved(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    goto :goto_6

    :pswitch_41
    iget-object v0, p0, Lcom/google/android/gms/internal/zzecw;->zzmrq:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeia;->zzbyh()Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/firebase/database/ChildEventListener;->onChildRemoved(Lcom/google/firebase/database/DataSnapshot;)V

    goto :goto_6

    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_17
        :pswitch_25
        :pswitch_33
        :pswitch_41
    .end packed-switch
.end method

.method public final zza(Lcom/google/firebase/database/DatabaseError;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecw;->zzmrq:Lcom/google/firebase/database/ChildEventListener;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/ChildEventListener;->onCancelled(Lcom/google/firebase/database/DatabaseError;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzeic;)Z
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/zzeic;->zzmzx:Lcom/google/android/gms/internal/zzeic;

    if-eq p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final zzbvp()Lcom/google/android/gms/internal/zzeik;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecw;->zzmrr:Lcom/google/android/gms/internal/zzeik;

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzedh;)Z
    .registers 4

    instance-of v0, p1, Lcom/google/android/gms/internal/zzecw;

    if-eqz v0, :cond_12

    check-cast p1, Lcom/google/android/gms/internal/zzecw;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzecw;->zzmrq:Lcom/google/firebase/database/ChildEventListener;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzecw;->zzmrq:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
