.class final Lcom/google/android/gms/internal/zzcjv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic val$name:Ljava/lang/String;

.field private synthetic zzimf:Ljava/lang/String;

.field private synthetic zzjgq:Ljava/lang/String;

.field private synthetic zzjhc:Lcom/google/android/gms/internal/zzcjn;

.field private synthetic zzjhh:J

.field private synthetic zzjhi:Landroid/os/Bundle;

.field private synthetic zzjhj:Z

.field private synthetic zzjhk:Z

.field private synthetic zzjhl:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcjn;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .registers 11

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcjv;->zzjhc:Lcom/google/android/gms/internal/zzcjn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcjv;->zzjgq:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcjv;->val$name:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzcjv;->zzjhh:J

    iput-object p6, p0, Lcom/google/android/gms/internal/zzcjv;->zzjhi:Landroid/os/Bundle;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/zzcjv;->zzjhj:Z

    iput-boolean p8, p0, Lcom/google/android/gms/internal/zzcjv;->zzjhk:Z

    iput-boolean p9, p0, Lcom/google/android/gms/internal/zzcjv;->zzjhl:Z

    iput-object p10, p0, Lcom/google/android/gms/internal/zzcjv;->zzimf:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjv;->zzjhc:Lcom/google/android/gms/internal/zzcjn;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjv;->zzjgq:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcjv;->val$name:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzcjv;->zzjhh:J

    iget-object v6, p0, Lcom/google/android/gms/internal/zzcjv;->zzjhi:Landroid/os/Bundle;

    iget-boolean v7, p0, Lcom/google/android/gms/internal/zzcjv;->zzjhj:Z

    iget-boolean v8, p0, Lcom/google/android/gms/internal/zzcjv;->zzjhk:Z

    iget-boolean v9, p0, Lcom/google/android/gms/internal/zzcjv;->zzjhl:Z

    iget-object v10, p0, Lcom/google/android/gms/internal/zzcjv;->zzimf:Ljava/lang/String;

    invoke-static/range {v1 .. v10}, Lcom/google/android/gms/internal/zzcjn;->zza(Lcom/google/android/gms/internal/zzcjn;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method
