.class final Lcom/google/android/gms/internal/zzeen;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzece;


# instance fields
.field private synthetic zzmrv:Lcom/google/android/gms/internal/zzedk;

.field private synthetic zzmti:Lcom/google/android/gms/internal/zzedn;

.field private synthetic zzmtl:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

.field private synthetic zzmug:Lcom/google/android/gms/internal/zzekd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzedn;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeen;->zzmti:Lcom/google/android/gms/internal/zzedn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeen;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzeen;->zzmug:Lcom/google/android/gms/internal/zzekd;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzeen;->zzmtl:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzbd(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzedn;->zzbf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeen;->zzmti:Lcom/google/android/gms/internal/zzedn;

    const-string v2, "onDisconnect().setValue"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeen;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    invoke-static {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzedn;->zza(Lcom/google/android/gms/internal/zzedn;Ljava/lang/String;Lcom/google/android/gms/internal/zzedk;Lcom/google/firebase/database/DatabaseError;)V

    if-nez v0, :cond_1c

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeen;->zzmti:Lcom/google/android/gms/internal/zzedn;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzedn;->zzf(Lcom/google/android/gms/internal/zzedn;)Lcom/google/android/gms/internal/zzefb;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeen;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeen;->zzmug:Lcom/google/android/gms/internal/zzekd;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzefb;->zzh(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)V

    :cond_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzeen;->zzmti:Lcom/google/android/gms/internal/zzedn;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeen;->zzmtl:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeen;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/gms/internal/zzedn;->zza(Lcom/google/firebase/database/DatabaseReference$CompletionListener;Lcom/google/firebase/database/DatabaseError;Lcom/google/android/gms/internal/zzedk;)V

    return-void
.end method
