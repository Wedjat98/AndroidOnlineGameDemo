.class final synthetic Lcom/google/firebase/iid/zzl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final zznzg:Lcom/google/firebase/iid/zzk;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzk;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzl;->zznzg:Lcom/google/firebase/iid/zzk;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/iid/zzl;->zznzg:Lcom/google/firebase/iid/zzk;

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/zzk;->zzd(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method
