.class final Lcom/google/android/gms/internal/zzeel;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzece;


# instance fields
.field private synthetic zzmrv:Lcom/google/android/gms/internal/zzedk;

.field private synthetic zzmti:Lcom/google/android/gms/internal/zzedn;

.field private synthetic zzmtl:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

.field private synthetic zzmuf:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzedn;Lcom/google/android/gms/internal/zzedk;JLcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeel;->zzmti:Lcom/google/android/gms/internal/zzedn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeel;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzeel;->zzmuf:J

    iput-object p5, p0, Lcom/google/android/gms/internal/zzeel;->zzmtl:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzbd(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzedn;->zzbf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeel;->zzmti:Lcom/google/android/gms/internal/zzedn;

    const-string v2, "setValue"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeel;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    invoke-static {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzedn;->zza(Lcom/google/android/gms/internal/zzedn;Ljava/lang/String;Lcom/google/android/gms/internal/zzedk;Lcom/google/firebase/database/DatabaseError;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeel;->zzmti:Lcom/google/android/gms/internal/zzedn;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzeel;->zzmuf:J

    iget-object v4, p0, Lcom/google/android/gms/internal/zzeel;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzedn;->zza(Lcom/google/android/gms/internal/zzedn;JLcom/google/android/gms/internal/zzedk;Lcom/google/firebase/database/DatabaseError;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeel;->zzmti:Lcom/google/android/gms/internal/zzedn;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeel;->zzmtl:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeel;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/gms/internal/zzedn;->zza(Lcom/google/firebase/database/DatabaseReference$CompletionListener;Lcom/google/firebase/database/DatabaseError;Lcom/google/android/gms/internal/zzedk;)V

    return-void
.end method
