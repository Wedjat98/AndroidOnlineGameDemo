.class final Lcom/google/firebase/iid/zzt;
.super Lcom/google/firebase/iid/zzr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/iid/zzr",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(IILandroid/os/Bundle;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p3}, Lcom/google/firebase/iid/zzr;-><init>(IILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method final zzac(Landroid/os/Bundle;)V
    .registers 3

    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_a

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_a
    invoke-virtual {p0, v0}, Lcom/google/firebase/iid/zzr;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method final zzcje()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
