.class Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi$1;
.super Ljava/lang/Object;
.source "GoogleLoginApi.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;->logout(Landroid/support/v4/app/FragmentActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;

.field final synthetic val$activity:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;Landroid/support/v4/app/FragmentActivity;)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi$1;->this$0:Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;

    iput-object p2, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .registers 2

    .prologue
    .line 127
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi$1;->onResult(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/common/api/Status;)V
    .registers 4
    .param p1, "status"    # Lcom/google/android/gms/common/api/Status;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi$1;->this$0:Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;

    iget-object v1, p0, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    # invokes: Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;->handleLogoutResult(Landroid/support/v4/app/FragmentActivity;Lcom/google/android/gms/common/api/Status;)V
    invoke-static {v0, v1, p1}, Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;->access$000(Lcom/games37/riversdk/functions/googleplay/login/GoogleLoginApi;Landroid/support/v4/app/FragmentActivity;Lcom/google/android/gms/common/api/Status;)V

    .line 131
    return-void
.end method
