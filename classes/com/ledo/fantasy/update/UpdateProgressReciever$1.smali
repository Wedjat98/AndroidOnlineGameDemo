.class Lcom/ledo/fantasy/update/UpdateProgressReciever$1;
.super Ljava/lang/Object;
.source "UpdateProgressReciever.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/update/UpdateProgressReciever;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ledo/fantasy/update/UpdateProgressReciever;

.field private final synthetic val$intent1:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/ledo/fantasy/update/UpdateProgressReciever;Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ledo/fantasy/update/UpdateProgressReciever$1;->this$0:Lcom/ledo/fantasy/update/UpdateProgressReciever;

    iput-object p2, p0, Lcom/ledo/fantasy/update/UpdateProgressReciever$1;->val$intent1:Landroid/content/Intent;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 66
    sget-object v2, Lcom/ledo/fantasy/update/Utils;->currentActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/ledo/fantasy/update/UpdateProgressReciever$1;->val$intent1:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 69
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mShowing"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 70
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 71
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_21
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_21} :catch_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_21} :catch_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_21} :catch_2c

    .line 79
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_21
    return-void

    .line 72
    :catch_22
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_21

    .line 74
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_27
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_21

    .line 76
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2c
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_21
.end method
