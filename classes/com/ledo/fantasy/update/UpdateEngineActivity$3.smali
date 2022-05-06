.class Lcom/ledo/fantasy/update/UpdateEngineActivity$3;
.super Ljava/lang/Object;
.source "UpdateEngineActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/update/UpdateEngineActivity;->checkVersion()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ledo/fantasy/update/UpdateEngineActivity;


# direct methods
.method constructor <init>(Lcom/ledo/fantasy/update/UpdateEngineActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity$3;->this$0:Lcom/ledo/fantasy/update/UpdateEngineActivity;

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ledo/fantasy/update/UpdateEngineActivity$3;)Lcom/ledo/fantasy/update/UpdateEngineActivity;
    .registers 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity$3;->this$0:Lcom/ledo/fantasy/update/UpdateEngineActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 343
    const-string v5, "EVENT_UPDATEENGINEACTIVITY_CHECKVERSION_HASNEWVERSION_SHOWALERT"

    invoke-static {v5, v7}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;Z)V

    .line 344
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v5, Lcom/ledo/fantasy/update/Utils;->currentActivity:Landroid/app/Activity;

    const/4 v6, 0x5

    invoke-direct {v0, v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 346
    .local v0, "alert":Landroid/app/AlertDialog$Builder;
    const-string v2, "\u675e\ue219\u6b22\u9357\u56e9\u9a87"

    .line 347
    .local v2, "strSoftwareUpdate":Ljava/lang/String;
    const-string v4, "\u9359\u6220\u5e47\u93c2\u626e\u5897\u93c8\ue10a\u7d1d\u7ed4\u5b2a\u5d46\u93c7\u5b58\u67ca"

    .line 348
    .local v4, "strUpdateImmediate":Ljava/lang/String;
    const-string v3, "\u93c7\u5b58\u67ca"

    .line 350
    .local v3, "strUpdate":Ljava/lang/String;
    :try_start_14
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v5

    sget v6, Lcom/ledo/fantasy/game/R$string;->strinfo_software_update:I

    invoke-virtual {v5, v6}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 351
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v5

    sget v6, Lcom/ledo/fantasy/game/R$string;->strinfo_update_immediate:I

    invoke-virtual {v5, v6}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 352
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v5

    sget v6, Lcom/ledo/fantasy/game/R$string;->strinfo_update:I

    invoke-virtual {v5, v6}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_31} :catch_5a

    move-result-object v3

    .line 359
    :goto_32
    invoke-static {v7}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->access$16(Z)V

    .line 360
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 361
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 362
    new-instance v5, Lcom/ledo/fantasy/update/UpdateEngineActivity$3$1;

    invoke-direct {v5, p0}, Lcom/ledo/fantasy/update/UpdateEngineActivity$3$1;-><init>(Lcom/ledo/fantasy/update/UpdateEngineActivity$3;)V

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 369
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 371
    :try_start_47
    iget-object v5, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity$3;->this$0:Lcom/ledo/fantasy/update/UpdateEngineActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->access$5(Lcom/ledo/fantasy/update/UpdateEngineActivity;Landroid/app/AlertDialog;)V

    .line 372
    iget-object v5, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity$3;->this$0:Lcom/ledo/fantasy/update/UpdateEngineActivity;

    # getter for: Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_AlertDialog:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->access$6(Lcom/ledo/fantasy/update/UpdateEngineActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_59} :catch_65

    .line 376
    :goto_59
    return-void

    .line 353
    :catch_5a
    move-exception v1

    .line 354
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 355
    const-string v2, "\u675e\ue219\u6b22\u9357\u56e9\u9a87"

    .line 356
    const-string v4, "\u9359\u6220\u5e47\u93c2\u626e\u5897\u93c8\ue10a\u7d1d\u7ed4\u5b2a\u5d46\u93c7\u5b58\u67ca"

    .line 357
    const-string v3, "\u93c7\u5b58\u67ca"

    goto :goto_32

    .line 373
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_65
    move-exception v1

    .line 374
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_59
.end method
