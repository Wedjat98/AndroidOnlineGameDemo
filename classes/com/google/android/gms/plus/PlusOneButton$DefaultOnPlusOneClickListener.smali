.class public Lcom/google/android/gms/plus/PlusOneButton$DefaultOnPlusOneClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/PlusOneButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultOnPlusOneClickListener"
.end annotation


# instance fields
.field private final zzjxw:Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;

.field private synthetic zzjxx:Lcom/google/android/gms/plus/PlusOneButton;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/plus/PlusOneButton;Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/plus/PlusOneButton$DefaultOnPlusOneClickListener;->zzjxx:Lcom/google/android/gms/plus/PlusOneButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/plus/PlusOneButton$DefaultOnPlusOneClickListener;->zzjxw:Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton$DefaultOnPlusOneClickListener;->zzjxx:Lcom/google/android/gms/plus/PlusOneButton;

    invoke-static {v0}, Lcom/google/android/gms/plus/PlusOneButton;->zza(Lcom/google/android/gms/plus/PlusOneButton;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/plus/PlusOneButton$DefaultOnPlusOneClickListener;->zzjxw:Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/google/android/gms/plus/PlusOneButton$DefaultOnPlusOneClickListener;->zzjxw:Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;

    invoke-interface {v1, v0}, Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;->onPlusOneClick(Landroid/content/Intent;)V

    :goto_15
    return-void

    :cond_16
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/PlusOneButton$DefaultOnPlusOneClickListener;->onPlusOneClick(Landroid/content/Intent;)V

    goto :goto_15
.end method

.method public onPlusOneClick(Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton$DefaultOnPlusOneClickListener;->zzjxx:Lcom/google/android/gms/plus/PlusOneButton;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusOneButton;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_17

    if-eqz p1, :cond_17

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/plus/PlusOneButton$DefaultOnPlusOneClickListener;->zzjxx:Lcom/google/android/gms/plus/PlusOneButton;

    invoke-static {v1}, Lcom/google/android/gms/plus/PlusOneButton;->zzb(Lcom/google/android/gms/plus/PlusOneButton;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_17
    return-void
.end method
