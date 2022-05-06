.class final Lcom/google/firebase/iid/zzq;
.super Lcom/google/firebase/iid/zzr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/iid/zzr",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(IILandroid/os/Bundle;)V
    .registers 5

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p3}, Lcom/google/firebase/iid/zzr;-><init>(IILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method final zzac(Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "ack"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/firebase/iid/zzr;->finish(Ljava/lang/Object;)V

    :goto_d
    return-void

    :cond_e
    new-instance v0, Lcom/google/firebase/iid/zzs;

    const/4 v1, 0x4

    const-string v2, "Invalid response to one way request"

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/iid/zzs;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/firebase/iid/zzr;->zzb(Lcom/google/firebase/iid/zzs;)V

    goto :goto_d
.end method

.method final zzcje()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
